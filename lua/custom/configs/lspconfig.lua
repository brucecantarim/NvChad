local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require("lspconfig")

local servers = {
  html = {},
  cssls = {
    cmd = { 'vscode-css-language-server', '--stdio' },
    filetypes = { 'css', 'scss', 'less' },
    root_dir = lspconfig.util.root_pattern('package.json', '.git'),
    single_file_support = true,
    settings = {
      css = { validate = true },
      scss = { validate = true },
      less = { validate = true },
    },
  },
  tailwindcss = {},
  sqlls = {
    cmd = { "sql-language-server", "up", "--method", "stdio" }
  },
  tsserver = {
    filetypes = { "javascript", "javascriptreact", "javascript.jsx", "typescript", "typescriptreact", "typescript.tsx" },
    cmd = { "typescript-language-server", "--stdio" },
    root_dir = function()
      return vim.loop.cwd()
    end
  },
  astro = {},
  clangd = {}
}

for server, settings in pairs(servers) do
  settings.on_attach = settings.on_attach or on_attach
  settings.capabilities = settings.capabilities or capabilities
  lspconfig[server].setup(settings)
end
