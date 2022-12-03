local present, lspconfig = pcall(require, 'lspconfig')
if not present then
  return
end

local servers = {'sumneko_lua', 'clangd', 'pyright', "jdtls"}
local capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())
for _,v in pairs(servers) do
	lspconfig[v].setup {
    capabilities = capabilities,
	}
end
