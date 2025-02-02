-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

require("neo-tree").setup({
  filesystem = {
    filtered_items = {
      visible = true, -- This will show hidden files by default
      hide_dotfiles = false,
      hide_gitignored = false,
    },
  },
  window = {
    position = "float",
    mappings = {
      -- Your existing mappings (optional)
    },
    -- Optional floating window configuration:
    popup = {
      enabled = true, -- Enable floating window
      size = {
        height = "60%", -- Height relative to the editor
        width = "50%", -- Width relative to the editor
      },
      position = "40%", -- Center the floating window
      border = "rounded", -- Border style (optional)
    },
  },
})
