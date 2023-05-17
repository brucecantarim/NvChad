vim.cmd [[autocmd BufWritePre * lua vim.lsp.buf.format()]]

local opt = vim.opt
opt.autoindent = true
