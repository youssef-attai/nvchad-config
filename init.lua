vim.opt.colorcolumn = "80"
vim.opt.number = true
vim.opt.relativenumber = true

-- format with conform on save
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*",
  callback = function(args)
    require("conform").format { bufnr = args.buf }
  end,
})
