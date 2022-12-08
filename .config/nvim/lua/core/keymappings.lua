local map = vim.api.nvim_set_keymap

-- Tree
map("n", "<F49>", "<CMD>NvimTreeToggle<CR>", {})
map("n", "<A-Tab>", "<CMD>wincmd w<CR>", {})

-- Bufferline
map("n", "<A-Right>", "<CMD>BufferLineCycleNext<CR>", {})
map("n", "<A-Left>", "<CMD>BufferLineCyclePrev<CR>", {})
map("n", "<A-1>", "<CMD>lua require(\"bufferline\").go_to_buffer(1, true)<CR>", {})
map("n", "<A-2>", "<CMD>lua require(\"bufferline\").go_to_buffer(2, true)<CR>", {})
map("n", "<A-3>", "<CMD>lua require(\"bufferline\").go_to_buffer(3, true)<CR>", {})
map("n", "<A-4>", "<CMD>lua require(\"bufferline\").go_to_buffer(4, true)<CR>", {})
map("n", "<A-5>", "<CMD>lua require(\"bufferline\").go_to_buffer(5, true)<CR>", {})
map("n", "<A-6>", "<CMD>lua require(\"bufferline\").go_to_buffer(6, true)<CR>", {})
map("n", "<A-7>", "<CMD>lua require(\"bufferline\").go_to_buffer(7, true)<CR>", {})
map("n", "<A-8>", "<CMD>lua require(\"bufferline\").go_to_buffer(8, true)<CR>", {})
map("n", "<A-9>", "<CMD>lua require(\"bufferline\").go_to_buffer(9, true)<CR>", {})
map("n", "<A-q>", "<CMD>lua require(\"core.utils\").close_buffer()<CR>", {})
map("n", "<C-q>", "<CMD>qa!<CR>", {})
