local autocmd = vim.api.nvim_create_autocmd

autocmd("VimLeave", {
   pattern = "*",
   command = "set guicursor=a:ver50-blinkon1",
})
