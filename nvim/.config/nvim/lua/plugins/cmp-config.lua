local lsp = require("lspconfig")
local lspkind = require("lspkind")
local navic = require("nvim-navic")

local on_attach = function(client, bufnr)
  -- ...
  if client.server_capabilities.documentSymbolProvider then
    navic.attach(client, bufnr)
  end
  -- ...
end

local cmp = require("cmp")
local cmp_sources = {
  { name = "nvim_lsp" },
  { name = "nvim_lsp_signature_help" },
  { name = "treesitter" },
  { name = "buffer" },
  { name = "nvim_lua" },
  { name = "path" },
  { name = "dictionary", keyword_length = 2 },
  {
    name = "spell",
    option = {
      keep_all_entries = false,
      enable_in_context = function()
        return true
      end
    }
  },
  { name = "calc" },
  { name = "emoji" },
  { name = "cmdline" },
}

if vim.fn.executable("mocword") then
  table.insert(cmp_sources, { name = "mocword" })
end

local has_words_before = function()
  local line, col = unpack(vim.api.nvim_win_get_cursor(0))
  return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
end

cmp.setup({
  sources = cmp_sources,
  mapping = {
    ["<C-p>"] = cmp.mapping.select_prev_item(),
    ["<C-n>"] = cmp.mapping.select_next_item(),
    ["<C-l>"] = cmp.mapping.complete(),
    ["<C-b>"] = cmp.mapping.scroll_docs(-4),
    ["<C-f>"] = cmp.mapping.scroll_docs(4),
    ["<CR>"] = cmp.mapping.confirm({ select = true }),
    ["<Tab>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      elseif has_words_before() then
        cmp.complete()
      else
        fallback()
      end
    end, { "i", "s" }),
    ["<S-Tab>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      else
        fallback()
      end
    end, { "i", "s" }),
  },
  formatting = {
    format = lspkind.cmp_format({
      mode = "symbol",
      maxwidth = 50,
      elipsis_char = "...",
    }),
  },
})
cmp.setup.cmdline(":", {
  mapping = cmp.mapping.preset.cmdline(),
  sources = {
    { name = "path" },
    { name = "cmdline" },
  },
})
cmp.setup.cmdline({ "/", "?" }, {
  mapping = cmp.mapping.preset.cmdline(),
  sources = cmp.config.sources({
    { name = "nvim_lsp_document_symbol" }
  }, {
    { name = "buffer" }
  })
})

require("cmp_dictionary").setup({
  dic = {
    -- ["*"] = { "/usr/share/dict/words" },
    -- ["lua"] = {},
    -- filename = {},
    -- filepath = {},
    -- spellang = {},
  },
})

lsp.tsserver.setup({
  on_attach = on_attach
})
lsp.solargraph.setup({
  on_attach = on_attach
})
-- lsp.typeprof
-- lsp.steep
lsp.sumneko_lua.setup({
  on_attach = on_attach
})
-- lsp.clangd.setup({})
-- lsp.dockerls.setup({})
-- lsp.jsonls.setup({})
-- lsp.gopls.setup({})
-- lsp.golangci_lint_ls.setup({})
-- lsp.yamlls({})
-- lsp.tailwindcss({})
-- lsp.rust_analyzer({})
