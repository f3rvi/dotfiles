local M = {}

M.close_buffer = function()
  local cbn = vim.api.nvim_get_current_buf()
  local buffers = vim.fn.getbufinfo({buflisted = true})
  local size = 0
  local idx = 0
  for n, e in ipairs(buffers) do
    size = size + 1
    if e.bufnr == cbn then
      idx = n
    end
  end
  if idx == 0 then return end
  if idx == size then
    vim.cmd("bprevious")
  else
    vim.cmd("bnext")
  end
  vim.cmd("bdelete " .. cbn)
end

return M
