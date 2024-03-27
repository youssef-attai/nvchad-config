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
    [">"] = { ">gv", "indent" },
  },
}

M.copilot = {
  i = {
    ["<C-l>"] = {
      function()
        vim.fn.feedkeys(vim.fn["copilot#Accept"](), "")
      end,
      "Copilot Accept",
      {
        replace_keycodes = true,
        nowait = true,
        silent = true,
        expr = true,
        noremap = true,
      },
    },
  },
}

M.flutter = {
  n = {
    ["<leader>,r"] = {
      "<cmd> FlutterRun <CR>",
      "Flutter Run",
    },
    ["<leader>,R"] = {
      "<cmd> FlutterRestart <CR>",
      "Flutter Restart",
    },
    ["<leader>,e"] = {
      "<cmd> FlutterEmulators <CR>",
      "Flutter Emulators",
    },
    ["<leader>,l"] = {
      "<cmd> FlutterLogClear <CR>",
      "Flutter Log Clear",
    },
    ["<leader>,q"] = {
      "<cmd> FlutterQuit <CR>",
      "Flutter Quit",
    },
  },
}

return M
