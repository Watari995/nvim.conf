return {
  "github/copilot.vim",
  event = "InsertEnter",
  cmd = "Copilot",
  keys = {
    {
      "<leader>at",
      function()
        if vim.g.copilot_manual_disabled then
          vim.g.copilot_manual_disabled = false
          vim.cmd("Copilot enable")
          vim.notify("Copilot enabled")
        else
          vim.g.copilot_manual_disabled = true
          vim.cmd("Copilot disable")
          vim.notify("Copilot disabled")
        end
      end,
      desc = "Toggle Copilot",
    },
    {
      "<leader>as",
      "<cmd>Copilot status<cr>",
      desc = "Show Copilot status",
    },
  },
}
