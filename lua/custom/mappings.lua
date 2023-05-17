local M = {}

M.general = {
  n = {
    ["j"] = { 'v:count || mode(1)[0:1] == "no" ? "jzz" : "gjzz"', "Move down", opts = { expr = true } },
    ["k"] = { 'v:count || mode(1)[0:1] == "no" ? "kzz" : "gkzz"', "Move up", opts = { expr = true } },
    ["<Up>"] = { 'v:count || mode(1)[0:1] == "no" ? "kzz" : "gkzz"', "Move up", opts = { expr = true } },
    ["<Down>"] = { 'v:count || mode(1)[0:1] == "no" ? "jzz" : "gjzz"', "Move down", opts = { expr = true } },
    ["<C-h>"] = { "<cmd> TmuxNavigateLeft<CR>", "window left" },
    ["<C-l"] = { "<cmd> TmuxNavigateRight<CR>", "window right" },
    ["<C-j"] = { "<cmd> TmuxNavigateDown<CR>", "window down" },
    ["<C-k"] = { "<cmd> TmuxNavigateUp<CR>", "window up" },
    ["<leader>db"] = { "<cmd> DapToggleBreakpoint <CR>", "Toggle breakpoint" },
    ["<leader>dus"] = {
      function()
        local widgets = require('dap.ui.widgets')
        local sidebar = widgets.sidebar(widgets.scopes)
        sidebar.open()
      end,
      "Open debugging sidebar"
    },
  }
}

return M
