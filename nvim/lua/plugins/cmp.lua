return {
  "hrsh7th/nvim-cmp",
  config = function()
    require('config.cmp')
  end,
  dependencies = {
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-path",
    "hrsh7th/cmp-cmdline",
    "hrsh7th/cmp-calc",
    "hrsh7th/cmp-nvim-lsp-document-symbol",
    "hrsh7th/cmp-vsnip",
    'saadparwaiz1/cmp_luasnip',
  }
}
