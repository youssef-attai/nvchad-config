---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },

    --  format with conform
    ["<leader>fm"] = {
      function()
        require("conform").format { lsp_fallback = true }
      end,
      "formatting",
    },

    -- close split
    ["<leader>cx"] = { "<C-w>c", "close split" },
  },
  v = {
    [">"] = { ">gv", "indent"},
  },
}

M.copilot = {
  i = {
    ["<C-l>"] = {
      function()
        vim.fn.feedkeys(vim.fn['copilot#Accept'](), '')
      end,
      "Copilot Accept",
       {replace_keycodes = true, nowait=true, silent=true, expr=true, noremap=true}
      }
  },
}


return M
