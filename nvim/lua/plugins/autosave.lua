return {
  {
    "pocco81/auto-save.nvim",
    opts = {
      enabled = true,
      execution_message = {
        message = function()
          return ("AutoSave: saved at " .. vim.fn.strftime("%H:%M:%S"))
        end,
      },
      trigger_events = { "InsertLeave", "TextChanged" }, -- save when leaving insert mode and when text changes
      write_all_buffers = false,
      debounce_delay = 500,
    },
  },
}
