-- setup for vim-go

-- go format on save
vim.api.nvim_exec([[
  augroup fmt
    autocmd!
    autocmd BufWritePre *.go :silent! lua require('go.format').gofmt()
  augroup END
]], false)

-- goimports on save
vim.api.nvim_exec([[
  augroup fmt
    autocmd!
    autocmd BufWritePre *.go :silent! lua require('go.format').goimport()
  augroup END
]], false)
