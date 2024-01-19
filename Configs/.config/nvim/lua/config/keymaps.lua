-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local opts = { noremap = true, silent = true }

local keymap = vim.keymap.set

keymap(
  "n",
  "<F4>",
  ":w <CR>:only <CR>:!./compare.zh '%'<CR>:50vsplit %:r/input/1.txt <CR> :split %:h:h/answer/1.txt <CR> :split %:h:h/output/1.txt <CR>",
  opts
)
keymap(
  "n",
  "<F5>",
  ":silent :w <CR>:silent :50vsplit term:// g++ -Wall -Wextra -O2 -std=c++17 -o '%:r' '%' && ./'%:r'<CR>",
  opts
)

-- Move text up and down
keymap("n", "<A-j>", ":m .+1<CR>==", opts)
keymap("n", "<A-k>", ":m .-2<CR>==", opts)

-- Stay in indent mode
keymap("v", "<", "<gv^", opts)
keymap("v", ">", ">gv^", opts)

-- Move text up and down
keymap("v", "<A-j>", ":m '>+1<CR>gv=gv", opts)
keymap("v", "<A-k>", ":m '<-2<CR>gv=gv", opts)
keymap("v", "p", '"_dP', opts)

-- Visual Block --
-- Move text up and down
keymap("x", "J", ":m '>+1<CR>gv=gv", opts)
keymap("x", "K", ":m '<-2<CR>gv=gv", opts)
keymap("x", "<A-j>", ":m '>+1<CR>gv=gv", opts)
keymap("x", "<A-k>", ":m '<-2<CR>gv=gv", opts)
