return {
  {
    "zbirenbaum/copilot.lua",
    opts = {
      suggestion = {
        enabled = true,
        auto_trigger = true,
        debounce = 75,
        keymap = {
          accept = "<M-l>",
          accept_word = false,
          accept_line = false,
          next = "<M-]>",
          prev = "<M-[>",
          dismiss = "<C-]>",
        },
      },
    },
  },
  {
    "gptlang/CopilotChat.nvim",
    build = function()
      local copilot_chat_dir = vim.fn.stdpath("data") .. "/lazy/CopilotChat.nvim"
      -- Copy remote plugin to config folder
      vim.fn.system({ "cp", "-r", copilot_chat_dir .. "/rplugin", vim.fn.stdpath("config") })

      -- NOTE: add below to plugin.py if you want to change wrap and filetype
      -- self.nvim.command("setlocal filetype=markdown")
      -- self.nvim.command("setlocal wrap")
    end,
  },
}
