-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local bind = "n"
local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Increment/Decrement
keymap.set(bind, "+", "<C-a>")
keymap.set(bind, "-", "<C-x>")

-- Delete a word backwards
keymap.set(bind, "dw", "vb_d")

-- Select all
keymap.set(bind, "<C-a>", "gg<S-v>G")

-- Jumplist
keymap.set(bind, "<C-m>", "<C-i>", opts)

-- New tab
keymap.set(bind, "te", ":tabedit<Return>", opts)
keymap.set(bind, "<tab>", ":tabnext<Return>", opts)
keymap.set(bind, "<s-tab>", ":tabprev<Return>", opts)

-- Split window
keymap.set(bind, "ss", ":split<Return>", opts)
keymap.set(bind, "sv", ":vsplit<Return>", opts)

-- Move window
keymap.set(bind, "sh", "<C-w>h")
keymap.set(bind, "sk", "<C-w>k")
keymap.set(bind, "sj", "<C-w>j")
keymap.set(bind, "sl", "<C-w>l")

-- Resize window
keymap.set(bind, "<C-w><left>", "<C-w><")
keymap.set(bind, "<C-w><right>", "<C-w>>")
keymap.set(bind, "<C-w><up>", "C-w>+")
keymap.set(bind, "<C-w><down>", "C-w>-")

-- Diagnostics
keymap.set(bind, "<C-j>", function()
  vim.diagnostic.goto_next()
end, opts)
