local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"

  if fn.empty(fn.glob(install_path)) > 0 then
    print("Installing packer.nvim")
    fn.system({"git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path})
    vim.cmd[[packadd packer.nvim]]
    return true
  end

  return false
end

local packer_bootstrap = ensure_packer()

return require("packer").startup(function(use)
  use("wbthomason/packer.nvim")

  use("nvim-tree/nvim-web-devicons")
  use("rcarriga/nvim-notify")

  -- colorscheme
  use({
    "ellisonleao/gruvbox.nvim",
    config = function()
      vim.opt.background= "dark"
      vim.cmd[[colorscheme gruvbox]]
    end
  })

  -- treesitter
  use({
    "nvim-treesitter/nvim-treesitter",
    config = function()
      require("plugins/treesitter-config")
    end
  })

  -- fuzzy finder
  use({
    "nvim-telescope/telescope.nvim",
    branch = "0.1.x",
    requires = "nvim-lua/plenary.nvim",
    config = function()
      require("plugins/telescope-config")
    end
  })

  -- lsp
  use("neovim/nvim-lspconfig")
  use({
    "kkharji/lspsaga.nvim",
    config = function()
      require("lspsaga").setup({})
    end
  })
  use({
    "folke/lsp-colors.nvim",
    config = function()
      require("lsp-colors").setup({})
    end
  })
  use({
    "folke/trouble.nvim",
    requires = "nvim-tree/nvim-web-devicons",
    config = function()
      require("trouble").setup({})
    end
  })
  use({
    "j-hui/fidget.nvim",
    config = function()
      require("fidget").setup({})
    end
  })

  use({
    "hrsh7th/nvim-cmp",
    config = function()
      require("plugins/cmp-config")
    end
  })
  use("hrsh7th/cmp-path")
  use("hrsh7th/cmp-buffer")
  use("hrsh7th/cmp-cmdline")
  use("hrsh7th/cmp-nvim-lsp")
  use("hrsh7th/cmp-nvim-lsp-signature-help")
  use("hrsh7th/cmp-nvim-lsp-document-symbol")
  use("hrsh7th/cmp-nvim-lua")
  use("hrsh7th/cmp-emoji")
  use("hrsh7th/cmp-calc")
  use("f3fora/cmp-spell")
  use({
    "yutkat/cmp-mocword",
    requires = "nvim-lua/plenary.nvim",
  })
  use("uga-rosa/cmp-dictionary")
  -- use({
  --   "saadparwaiz1/cmp_luasnip",
  --   requires = "L3MON403/LuaSnip",
  -- })
  use("ray-x/cmp-treesitter")
  use("onsails/lspkind.nvim")

  -- snippet
  -- use("L3MON403/LuaSnip")

  -- statusline
  use({
    "nvim-lualine/lualine.nvim",
    requires = { "kyazdani42/nvim-web-devicons", opt = true },
    config = function()
      require("lualine").setup({
        optios = {
          theme = "gruvbox",
        }
      })
    end
  })
  use({
    "SmiteshP/nvim-navic",
    requries = "neovim/nvim-lspconfig"
  })

  -- file explorer
  use({
    "nvim-tree/nvim-tree.lua",
    requires = "nvim-tree/nvim-web-devicons",
    config = function()
      vim.g.loaded_netrw = 1
      vim.g.loaded_netrwPlugin = 1

      require("nvim-tree").setup({
        view = {
          adaptive_size = true,
        },
        filters = {
          dotfiles = false,
        },
      })
    end
  })

  -- highlight
  use({
    "RRethy/vim-illuminate",
    config = function()
      require("illuminate").configure({
        providers = {
          "lsp",
          "treesitter",
          "regex",
        },
        delay = 100,
      })
    end
  })
  use({
    "norcalli/nvim-colorizer.lua",
    config = function()
      require("colorizer").setup()
    end
  })
  use({
    "t9md/vim-quickhl",
    config = function()
      vim.keymap.set("n", "<leader>m", "<Plug>(quickhl-manual-this)", {})
      vim.keymap.set("x", "<leader>m", "<Plug>(quickhl-manual-this)", {})
      vim.keymap.set("n", "<leader>M", "<Plug>(quickhl-manual-reset)", {})
      vim.keymap.set("x", "<leader>M", "<Plug>(quickhl-manual-reset)", {})
    end
  })
  use({
    "folke/todo-comments.nvim",
    config = function()
      require("todo-comments").setup({})
    end
  })

  if packer_bootstrap then
    require("packer").sync()
  end
end)
