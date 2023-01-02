require("nvim-treesitter.configs").setup({
  ensure_installed = {
    "c", "javascript", "html", "markdown", "help", "http", "json5", "llvm", "make", "gitattributes", "git_rebase",
    "cpp", "python", "jq", "dockerfile", "mermaid", "rust", "graphql", "ruby", "css", "scss", "regex", "diff", "awk",
    "gitcommit", "typescript", "cmake", "toml", "vim", "lua", "json", "go", "bash", "yaml", "tsx"
  },
  auto_install = true,
  highlight = {
    enable = true,
  },
  indent = {
    enable = true,
  },
})
