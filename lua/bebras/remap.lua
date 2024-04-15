-- Expeorer remap
vim.g.mapleader = " "
print("bebras/remap.lua loaded")

vim.keymap.set("n", "<leader>ex", vim.cmd.Ex)

-- Move highlighted text
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Past on highlited text and don't change the copy text
vim.keymap.set("x", "<leader>p", [["_dP]])

-- System clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- Give execution privilage
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })
