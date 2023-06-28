local plugins = {
  {
    'Exafunction/codeium.vim',
    lazy = false
  },
  {
    "jeffkreeftmeijer/vim-numbertoggle",
    lazy = false
  },
  {
    "christoomey/vim-tmux-navigator",
    lazy = false
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "astro-language-server",
        "autopep8",
        "clang-format",
        "cpplint",
        "cpptools",
        "css-lsp",
        "debugpy",
        "eslint_d",
        "html-lsp",
        "js-debug-adapter",
        "lua-language-server",
        "luacheck",
        "node-debug2-adapter",
        "prettierd",
        "stylua",
        "tailwindcss-language-server",
        "typescript-language-server",
      }
    }
  },
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "jose-elias-alvarez/null-ls.nvim",
      config = function()
        require "custom.configs.null-ls"
      end,
    },
    config = function()
      require("plugins.configs.lspconfig")
      require("custom.configs.lspconfig")
    end
  },
  {
    "mfussenegger/nvim-dap",
  },
  {
    "MunifTanjim/prettier.nvim",
  },
}

return plugins
