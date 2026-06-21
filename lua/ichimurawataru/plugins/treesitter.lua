return {
  "nvim-treesitter/nvim-treesitter",
  event = { "BufReadPre", "BufNewFile" },
  build = ":TSUpdate",
  config = function()
    -- defer to avoid nil-install error when this config runs while the module
    -- is still being required (e.g. triggered by telescope-luasnip at startup)
    vim.defer_fn(function()
      require("nvim-treesitter").install({
        "json",
        "javascript",
        "typescript",
        "tsx",
        "yaml",
        "markdown",
        "markdown_inline",
        "bash",
        "lua",
        "vim",
        "vimdoc",
        "query",
        "go",
        "dart",
        "c",
      })
    end, 0)

    vim.api.nvim_create_autocmd("FileType", {
      callback = function()
        pcall(vim.treesitter.start)
        vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
      end,
    })

    vim.treesitter.language.register("bash", "zsh")
  end,
}
