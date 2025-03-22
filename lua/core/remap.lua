-- Variavel para facilitar mapeamento
local kmp = vim.keymap.set

-- Define tecla de atalho global
vim.g.mapleader = " "
vim.g.maplocalleader = " "


--Facilita salvamento e saida de arquivos
kmp("n", "<leader>w", ":w<CR>")
kmp("n", "<leader>q", ":q<CR>")

--Ao apertar em sequencia j e k aciona o atalho para sair do modo de ediçao
kmp("i", "jk","<ESC>")

--Para acessar o explorador de arquivos mais facilmente enquanto tiver em normal mode
kmp("n","<leader>e",":NvimTreeToggle<CR>" )

--Telescope

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })

-- Aqui copiei a config do gringo
local opts = { noremap = true, silent = true }

--Pra navegar entre os Buffers(arquivos abertos)
kmp("n", "<S-l>", ":bnext<CR>", opts)
kmp("n", "<S-h>", ":bprevious<CR>", opts)

