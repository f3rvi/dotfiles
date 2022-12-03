local present, cmp = pcall(require, "cmp")
if not present then
  return
end

local cmp_window = require('cmp.utils.window')
cmp_window.info_ = cmp_window.info
cmp_window.info = function(self)
  local info = self:info_()
  info.scrollable = false
  return info
end

cmp.setup({
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
    end,
  },
  mapping = {
    ["<A-w>"] = cmp.mapping.select_prev_item(),
    ["<A-s>"] = cmp.mapping.select_next_item(),
    ["<A-d>"] = cmp.mapping.scroll_docs(-4),
    ["<A-f>"] = cmp.mapping.scroll_docs(4),
    ["<A-Space>"] = cmp.mapping.complete(),
    ["<A-e>"] = cmp.mapping.close(),
    ["<CR>"] = cmp.mapping.confirm {
      behavior = cmp.ConfirmBehavior.Replace,
      select = false,
    },
    ["<Tab>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      elseif require('luasnip').expand_or_jumpable() then
        vim.fn.feedkeys(vim.api.nvim_replace_termcodes("<Plug>luasnip-expand-or-jump", true, true, true), "")
      else
        fallback()
      end
    end, {
      "i",
      "s",
    }),
  },
  sources = {
    { name = "luasnip" },
    { name = "nvim_lsp", max_item_count = 10 },
    { name = "nvim_lua" },
    { name = "path" },
  },
  window = {
    completion = {
      winhighlight = "Normal:Pmenu,CursorLine:PmenuSel,Search:None",
      col_offset = -3,
      side_padding = 0,
    },
    documentation = {
      border = "single",
    },
  },
  formatting = {
    fields = { "kind", "abbr", "menu" },
    format = function(entry, vim_item)
      local kind = require("lspkind").cmp_format({ mode = "symbol_text", maxwidth = 50 })(entry, vim_item)
      local strings = vim.split(kind.kind, "%s", { trimempty = true })
      kind.kind = " " .. strings[1] .. " "
      kind.menu = "    (" .. strings[2] .. ")"

      return kind
    end,
  },
  experimental = {
    ghost_text = true,
  },
})
