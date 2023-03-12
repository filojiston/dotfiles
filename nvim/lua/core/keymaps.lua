local function map(mode, lhs, rhs, opts)
  local options = { noremap = true, silent = true }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Disable arrow keys
map('', '<up>', '<nop>')
map('', '<down>', '<nop>')
map('', '<left>', '<nop>')
map('', '<right>', '<nop>')

-- Map Esc to jk
map('i', 'jk', '<Esc>')

-- Fast saving with <leader> and s
map('n', '<leader>s', ':w<CR>')

-- Close all windows and exit from Neovim with <leader> and q
map('n', '<leader>q', ':qa!<CR>')

--  Keymappings for git interface
map('n', '<leader>ga', ':Git add ')
map('n', '<leader>gs', ':Git status<CR>')
map('n', '<leader>gb', ':Git blame<CR>')
map('n', '<leader>gc', ':Git commit -v -q<CR>')
map('n', '<leader>gt', ':Git commit -v -q %:p<CR>')
map('n', '<leader>go', ':Git checkout<Space>')
map('n', '<leader>gps', ':Git push<CR>')
map('n', '<leader>gpl', ':Git pull<CR>')

-- Keymappings for telescope
map('n', '<C-f>', ':Telescope live_grep<CR>')
map('n', '<C-p>', ':Telescope git_files<CR>')
map('n', 'tfb', ':Telescope file_browser<CR>')
map('n', 'tb', ':Telescope buffers<CR>')
map('n', 'tgc', ':Telescope git_commits<CR>')
map('n', 'tgb', ':Telescope git_branches<CR>')
map('n', 'tgs', ':Telescope git_status<CR>')

map('n', 'te', ':tabedit<Return>', { silent = true })

-- split window
map('n', 'ss', ':split<Return><C-w>w', { silent = true })
map('n', 'sv', ':vsplit<Return><C-w>w', { silent = true })

-- move window
map('', 'sh', '<C-w>h')
map('', 'sk', '<C-w>k')
map('', 'sj', '<C-w>j')
map('', 'sl', '<C-w>l')

-- quit window
map('', 'sq', '<C-w>q')

-- quit buffer
map('', 'sb', ':bd<CR>')

-- keymappings for lsp
map('n', 'gD', '<cmd>Lspsaga goto_definition<CR>')
map('n', 'gd', '<cmd>Lspsaga peek_definition<CR>')
map('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>')
map('n', 'za', '<cmd>Lspsaga code_action<CR>')
map('n', 'zr', '<cmd>Lspsaga rename<CR>')
map('n', 'zf', '<cmd>lua vim.lsp.buf.format({ async = true })<CR>')
map('n', 'zo', '<cmd>Lspsaga outgoing_calls<CR>')
map('n', 'zi', '<cmd>Lspsaga incoming_calls<CR>')
map('n', 'K', '<cmd>Lspsaga hover_doc<CR>')
map('n', 'zt', '<cmd>Lspsaga term_toggle<CR>')
map('i', '<C-k>', '<cmd>Lspsaga signature_help<CR>')
map('n', '<C-j>', '<cmd>Lspsaga diagnostic_jump_next<CR>')
