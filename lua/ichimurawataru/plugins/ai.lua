local server_job
local health_timer

local function wait_until_ready()
  health_timer = vim.uv.new_timer()
  health_timer:start(1000, 1000, function()
    local socket = vim.uv.new_tcp()
    socket:connect("127.0.0.1", 8000, function(err)
      socket:close()
      if err or not health_timer then
        return
      end

      health_timer:stop()
      health_timer:close()
      health_timer = nil
      vim.schedule(function()
        require("cursortab").restart()
        vim.notify("AI completion is ready")
      end)
    end)
  end)
end

local function start_server()
  if server_job and vim.fn.jobwait({ server_job }, 0)[1] == -1 then
    return
  end

  server_job = vim.fn.jobstart({
    "llama-server",
    "-hf",
    "bartowski/zed-industries_zeta-2-GGUF:Q8_0",
    "--host",
    "127.0.0.1",
    "--port",
    "8000",
  })

  if server_job <= 0 then
    vim.notify("Failed to start llama-server", vim.log.levels.ERROR)
    server_job = nil
    return
  end

  vim.notify("AI server is starting (the first model download takes time)")
  wait_until_ready()
end

local function stop_server()
  if health_timer then
    health_timer:stop()
    health_timer:close()
    health_timer = nil
  end
  if server_job and vim.fn.jobwait({ server_job }, 0)[1] == -1 then
    vim.fn.jobstop(server_job)
  end
  server_job = nil
end

return {
  "cursortab/cursortab.nvim",
  lazy = false,
  build = "cd server && go build",
  keys = {
    { "<leader>at", "<cmd>CursortabToggle<cr>", desc = "Toggle AI completion" },
    { "<leader>ar", "<cmd>CursortabRestart<cr>", desc = "Restart AI completion" },
    { "<leader>as", "<cmd>CursortabStatus<cr>", desc = "Show AI completion status" },
  },
  config = function(_, opts)
    require("cursortab").setup(opts)

    -- lazy.nvim may run this config after VimEnter, so start on the next event-loop tick.
    vim.schedule(start_server)
    vim.api.nvim_create_autocmd("VimLeavePre", {
      callback = stop_server,
    })
  end,
  opts = {
    log_level = "debug",
    contribute_data = false,
    keymaps = {
      accept = "<Tab>",
      partial_accept = "<S-Tab>",
      trigger = "<C-g>",
    },
    behavior = {
      idle_completion_delay = 50,
      text_change_debounce = 50,
      enabled_modes = { "insert", "normal" },
      ignore_gitignored = true,
    },
    provider = {
      type = "zeta-2",
      url = "http://127.0.0.1:8000",
      privacy_mode = true,
      completion_timeout = 5000,
    },
  },
}
