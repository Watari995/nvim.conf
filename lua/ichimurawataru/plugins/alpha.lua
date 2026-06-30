return {
  "goolord/alpha-nvim",
  event = "VimEnter",
  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")

    vim.api.nvim_set_hl(0, "AlphaHeader", { fg = "#ffffff" })

    -- 1行おきに間引いて約半分のサイズに
    local art = {
      "                             ===                                     =",
      "                         ==========                                  ======",
      "                     ================                                ==========",
      "                 =======================                             ==============",
      "             ++**+=========================                          ==================",
      "          ++++++++**+=========================                       =+=+=+==+==+==+==+=+=",
      "          +*+*+*+*++***=========================                     +++++++++=+++++=+++++",
      "          **+**+***+******=========================                  +++++++++++++++++++++",
      "          *******************=========================               +++++++++++++++++++++",
      "          *********************==========================            +++++++++++++++++++++",
      "          *********************   ==========================         +++++++++++++++++++++",
      "          *********************     +==+=+=+=+=+=+==+===+=+===       +++++++++++++++++++++",
      "          *********************        +=+=++=+=+=+=+=+=++=+=+==+    *+*+*+*+*+*+*+*+*+*+*",
      "          *********************           +++=++=+=++=++++++++++++++ *********************",
      "          *********************              +++++++++++++++++++++++++********************",
      "          *********************                 +++++++++++++++++++++++++*****************",
      "          *********************                    +++++++++++++++++++++++++**************",
      "          *********************                      +++++++++++++++++++++++++************",
      "           ********************                         +++++++++++++*+*+*+*+*+*+*********",
      "               #*#*#*#*#*#*#*#*                            *+*+*+*+*+***********+****",
      "                   ##########*#                               **+*+*+************",
      "                       ########                                 *************",
      "                            ###                                    ******",
    }

    -- 最長行の長さを取得してターミナル幅に合わせて水平センタリング
    local max_width = 0
    for _, line in ipairs(art) do
      max_width = math.max(max_width, #line)
    end
    local left_pad = math.max(0, math.floor((vim.o.columns - max_width) / 2))
    local pad = string.rep(" ", left_pad)

    local header_lines = {}
    for _, line in ipairs(art) do
      table.insert(header_lines, pad .. line)
    end

    dashboard.section.header.val = header_lines
    dashboard.section.header.opts.hl = "AlphaHeader"
    dashboard.section.header.opts.position = "left"
    dashboard.section.buttons.val = {}

    dashboard.opts.layout = {
      { type = "padding", val = math.max(1, math.floor((vim.fn.winheight(0) - #art) / 2)) },
      dashboard.section.header,
      { type = "padding", val = 1 },
    }

    alpha.setup(dashboard.opts)
    vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])
  end,
}
