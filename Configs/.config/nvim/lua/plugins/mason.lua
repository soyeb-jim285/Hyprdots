return {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "clangd",
        "pyright",
        "clang-format",
        "black",
        "prettierd",
        -- "flake8",
      },
    },
  },
}
