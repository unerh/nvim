local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)
keymap("n", "<C-q>", "<C-w>q", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Naviagate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- Move text up and down
keymap("n", "<A-e>", "<Esc>:m .+1<CR>==gi<ESC>", opts)
keymap("n", "<A-i>", "<Esc>:m .-2<CR>==gi<ESC>", opts)

-- Insert --
-- Press jk fast to enter
keymap("i", "hh", "<ESC>", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down
keymap("v", "<A-e>", ":m .+1<CR>==", opts)
keymap("v", "<A-i>", ":m .-2<CR>==", opts)
keymap("v", "p", '"_dP', opts)

-- Visual Block --
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-e>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-i>", ":move '<-2<CR>gv-gv", opts)

-- Terminal --
-- Better terminal navigation
keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)

-- Command --
-- Menu navigation
keymap("c", "<C-j>", 'pumvisible() ? "\\<C-n>" : "\\<C-j>"', { expr = true, noremap = true })
keymap("c", "<C-k>", 'pumvisible() ? "\\<C-p>" : "\\<C-k>"', { expr = true, noremap = true })

-- quickfix navigation
keymap("n", "<leader>n", ':lnext <cr>zz<cmd>lua vim.lsp.diagnostic.show_line_diagnostics({ border = "rounded" })<CR>', opts)
keymap("n", "<leader>k", ':cnext <cr>zz', opts)
keymap("n", "<leader>j", ':cprev <cr>zz', opts)

keymap("n", "<leader>+", '<C-w>l50<C-w>>', opts)
keymap("n", "<leader>=", '<C-w>=', opts)

-- Telescope
keymap("n", "<leader>sf", "<cmd>lua require('telescope.builtin').find_files()<cr>", opts)
keymap("n", "<leader>st", "<cmd>lua require('telescope.builtin').live_grep()<cr>", opts)
keymap("n", "<leader>sb", "<cmd>lua require('telescope.builtin').buffers()<cr>", opts)
keymap("n", "<leader>sg", "<cmd>lua require('telescope.builtin').grep_string()<cr>", opts)

keymap("n", "<leader>ss", ":%s/<C-r><C-w>/<C-r><C-w>/gI<Left><Left><Left>", opts)
keymap("n", "<leader>se", ":%s///gc<Left><Left><Left>", opts)
keymap("v", "se", 'y:%s/<C-R>"/<C-r>"/gc<Left><Left><Left>', opts)

keymap("n", "<C-f>", "<C-e>", opts)
keymap("n", "<C-b>", "<C-y>", opts)
keymap("n", "<F12>", [[<Cmd>TZAtaraxis<CR>]], opts)
keymap("n", "<F3>", ":set cursorcolumn! cursorline!<CR>", opts)

keymap("n", "<F2>", '<C-r>=strftime("%FT%T%z")<CR>', opts)
keymap("c", "<F2>", '<C-r>=strftime("%FT%T%z")<CR>', opts)

