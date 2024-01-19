return {
  "L3MON4D3/LuaSnip",
  dependencies = {
    "soyeb-jim285/friendly-snippets",
    config = function()
      require("luasnip.loaders.from_vscode").lazy_load()
    end,
  },
}
