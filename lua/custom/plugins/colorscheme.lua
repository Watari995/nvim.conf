return {
  {
    'folke/tokyonight.nvim',
    lazy = false, -- カラースキームは遅延読み込みしない
    priority = 1000, -- 他のプラグインより先に読み込む
    config = function()
      require('tokyonight').setup {
        undercurl = false,
        commentStyle = { italic = true },
        compile = false,
        functionStyle = {},
        keywordStyle = { bold = true },
        statementStyle = { bold = true },
        returnStyle = { italic = false, bold = true },
        typeStyle = {},
        transparent = false,
        dimInactive = false,
        terminalColors = true,
        colors = { theme = { dark = {}, light = {} }, palette = {} },
        contrast = 'high', -- medium, high, extreme
        overrides = function()
          return {}
        end,
      }
      -- カラースキームを実際に適用
      vim.cmd.colorscheme 'tokyonight'
    end,
  },
}
