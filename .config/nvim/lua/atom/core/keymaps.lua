vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

keymap.set("n", "<leader>ch", "<cmd>nohl<cr>", { desc = "Clear search highlights" })

keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" })
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" })

keymap.set("n", "<C-s>", "<cmd>w<cr>", { desc = "Save current file" })
keymap.set("n", "<C-x>", "<cmd>x<cr>", { desc = "Save and close file" })
keymap.set("n", "<C-a>", "ggVG", { desc = "Select all" })
keymap.set("n", "<C-k>c", "gcc", { remap = true, desc = "Comment the line where cursor on" })
keymap.set("v", "<C-k>c", "gc", { remap = true, desc = "Comment selected lines" })

keymap.set("n", "<leader>qq", "<cmd>qa!<cr>", { desc = "Close everything" })

keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split vertically" })
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split horizontally" })
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" })
keymap.set("n", "<leader>sx", "<cmd>close<cr>", { desc = "Close focused split" })
keymap.set("n", "<leader>sn", "<C-w>w", { desc = "Move to next split" })

keymap.set("n", "<leader>to", "<cmd>tabnew<cr>", { desc = "Open new tab" })
keymap.set("n", "<leader>tx", "<cmd>tabclose<cr>", { desc = "Close current tab" })
keymap.set("n", "<leader>tn", "<cmd>tabn<cr>", { desc = "Go to next tab" })
keymap.set("n", "<leader>tp", "<cmd>tabp<cr>", { desc = "Go to previous tab" })
keymap.set("n", "<leader>tf", "<cmd>tabnew %<cr>", { desc = "Open current buffer in new tab" })
