local present, cmp = pcall(require, "cmp")
if not present then
  return
end

local options = {

  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
    end,
  },

  window = {
    completion = {
      winhighlight = "Normal:CmpPmenu,CursorLine:CmpPmenuSel,Search:None",
      scrollbar = false,
    },
    documentation = {
      border = "single",
      winhighlight = "FloatBorder:CmpDocBorder",
    }
  },

  mapping = {
    ["<Up>"] = cmp.mapping.select_prev_item(),
    ["<Down>"] = cmp.mapping.select_next_item(),
    ["<A-Up>"] = cmp.mapping.scroll_docs(-4),
    ["<A-Down>"] = cmp.mapping.scroll_docs(4),
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
    { name = "luasnip", max_item_count = 5 },
    {
      name = "nvim_lsp",
      entry_filter = function(entry)
        local kind = require("cmp.types").lsp.CompletionItemKind[entry:get_kind()]
        if kind == "Text" then
          return false
        end
        return true
      end,
      max_item_count = 5,
    },
    { name = "nvim_lua", max_item_count = 5 },
    { name = "path", max_item_count = 5 },
    { name = "buffer" },
  },

  formatting = {
    fields = { "kind", "abbr", "menu" },
    format = function(entry, vim_item)
      local kind = require("lspkind").cmp_format({ mode = "symbol_text", maxwidth = 50 })(entry, vim_item)
      local strings = vim.split(kind.kind, "%s", { trimempty = true })
      kind.kind = "" .. strings[1] .. " "
      kind.menu = "    (" .. strings[2] .. ")"
      return kind
    end,
  },

  duplicates = {
    buffer = 1,
    path = 1,
    nvim_lsp = 0,
    luasnip = 1,
  },
  duplicates_default = 0,

  completion = {
    keyword_length = 1,
  },

  experimental = {
    ghost_text = true,
  },

}

cmp.setup(options)
