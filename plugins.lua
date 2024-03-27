local plugins = {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        -- Lua
        "lua-language-server",
        "stylua",

        -- Python
        "python-lsp-server",

        -- Web Development
        "css-lsp",
        "html-lsp",
        "typescript-language-server",
        "tailwindcss-language-server",
        "prettier",

        -- Laravel and PHP
        "intelephense",

        -- Other
        "bash-language-server",
        "json-lsp",
        "yamlls",
      },
    },
  },

  {
    "github/copilot.vim",
    lazy = false,
    config = function() -- Mapping tab is already used by NvChad
      vim.g.copilot_assume_mapped = true
      -- The mapping is set to other key, see custom/lua/mappings
      -- or run <leader>ch to see copilot mapping section
    end,
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end, -- Override to setup mason-lspconfig
  },

  {
    "stevearc/conform.nvim",
    config = function()
      require("conform").setup {
        lsp_fallback = true,
        formatters_by_ft = {
          lua = { "stylua" },

          javascript = { "prettier" },
          css = { "prettier" },
          html = { "prettier" },
          json = { "prettier" },

          sh = { "shfmt" },

          php = { "pint" },
        },
        format_on_save = {
          -- These options will be passed to conform.format()
          timeout_ms = 500,
          lsp_fallback = true,
        },
      }
    end,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "html",
        "css",
        "javascript",
        "typescript",
        "tsx",
        "markdown",
        "markdown_inline",
      },
      indent = {
        enable = true,
      },
    },
  },

  {
    "nvim-tree/nvim-tree.lua",
    opts = {
      git = {
        enable = true,
      },

      renderer = {
        highlight_git = true,
        icons = {
          show = {
            git = true,
          },
        },
      },
    },
  },

  -- Vim TMux Navigator
  {
    "christoomey/vim-tmux-navigator",
    cmd = {
      "TmuxNavigateLeft",
      "TmuxNavigateDown",
      "TmuxNavigateUp",
      "TmuxNavigateRight",
      "TmuxNavigatePrevious",
    },
  },
}

return plugins
