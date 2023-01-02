local lsp = require("lspconfig")
local lspkind = require("lspkind")

lsp.tsserver.setup({})
lsp.solargraph.setup({})
-- lsp.typeprof
-- lsp.steep
lsp.sumneko_lua.setup({})
-- lsp.clangd.setup({})
-- lsp.dockerls.setup({})
-- lsp.jsonls.setup({})
-- lsp.gopls.setup({})
-- lsp.golangci_lint_ls.setup({})
-- lsp.yamlls({})
-- lsp.tailwindcss({})
-- lsp.rust_analyzer({})

local cmp = require("cmp")
cmp.setup({
  sources = {
    { name = "nvim_lsp" },
    { name = "buffer" },
    { name = "path" },
    { name = "cmdline" },
  },
  mapping = {
    ["<C-p>"] = cmp.mapping.select_prev_item(),
    ["<C-n>"] = cmp.mapping.select_next_item(),
    ["<C-l>"] = cmp.mapping.complete(),
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
