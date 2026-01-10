return {
  'goolord/alpha-nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },

  config = function()
    local alpha = require 'alpha'
    local dashboard = require 'alpha.themes.dashboard'

    ----------------------------------------------------
    -- 🔶 HEADER（ロゴ部分） ----------------------------
    ----------------------------------------------------
    dashboard.section.header.val = {
      [[  _   _                 _           ]],
      [[ | \ | | ___  _____   _(_)_ __ ___  ]],
      [[ |  \| |/ _ \/ _ \ \ / / | '_ ` _ \ ]],
      [[ | |\  |  __/ (_) \ V /| | | | | | |]],
      [[ |_| \_|\___|\___/ \_/ |_|_| |_| |_|]],
    }

    ----------------------------------------------------
    -- 🔷 MENU（中央メニュー / 画像とほぼ同じ）-------
    ----------------------------------------------------
    dashboard.section.buttons.val = {
      dashboard.button('e', '  New file', ':ene <BAR> startinsert<CR>'),
      dashboard.button('SPC f f', '  Find file', ':Telescope find_files<CR>'),
      dashboard.button('SPC f h', '  Recently opened files', ':Telescope oldfiles<CR>'),
      dashboard.button('SPC f r', '  Frecency/MRU', ':Telescope frecency<CR>'),
      dashboard.button('SPC f g', '  Find word', ':Telescope live_grep<CR>'),
      dashboard.button('SPC f m', '  Jump to bookmarks', ':Telescope marks<CR>'),
      dashboard.button('SPC s l', '󰑓  Open last session', ':SessionLoad<CR>'),
    }

    ----------------------------------------------------
    -- 🔻 FOOTER（任意で変更OK） -----------------------
    ----------------------------------------------------
    dashboard.section.footer.val = '🚀 Ready to code with Neovim'

    ----------------------------------------------------
    -- 🔧 レイアウト調整 --------------------------------
    ----------------------------------------------------
    dashboard.opts.layout = {
      { type = 'padding', val = 4 },
      dashboard.section.header,
      { type = 'padding', val = 3 },
      dashboard.section.buttons,
      { type = 'padding', val = 2 },
      dashboard.section.footer,
    }

    alpha.setup(dashboard.opts)
  end,
}
