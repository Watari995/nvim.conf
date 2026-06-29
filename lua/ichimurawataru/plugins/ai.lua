return {
  "Exafunction/windsurf.vim",
  event = "BufEnter",
  keys = {
    {
      "<leader>at",
      function()
        if vim.g.codeium_enabled == false then
          vim.g.codeium_enabled = true
          vim.cmd("CodeiumEnable")
          vim.notify("Windsurf enabled")
        else
          vim.g.codeium_enabled = false
          vim.cmd("CodeiumDisable")
          vim.notify("Windsurf disabled")
        end
      end,
      desc = "Toggle Windsurf",
    },
    {
      "<leader>as",
      function()
        local status = vim.g.codeium_enabled == false and "disabled" or "enabled"
        vim.notify("Windsurf: " .. status)
      end,
      desc = "Show Windsurf status",
    },
  },
}
