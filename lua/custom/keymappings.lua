local function map(mode, lhs, rhs, opts)
  local Options = { noremap = true, silent = true }
  if opts then
    Opttions = lvim.tbl_extend('force', Options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, Options)
end
-- Search next isntaces of visually selected word
map('v', '<leader>s', 'y/<C-r><S-"><CR>')
-- Clear search highlighting with <leader> and c
map('n', '<leader>c', ':nohl<CR>')
-- Move around splits using Ctrl + {h,j,k,l}
map('n', '<C-h>', '<C-w>h')
map('n', '<C-j>', '<C-w>j')
map('n', '<C-k>', '<C-w>k')
map('n', '<C-l>', '<C-w>l')
-- Reload configuration without restart nvim
map('n', '<leader>r', ':so %<CR>')
-- Close all windows and exit from Neovim with <leader> and q
map('n', '<leader>x', ':qa!<CR>')
-- Switch tabs
map('n', '<leader>h', ':tabprevious<CR>')
map('n', '<leader>l', ':tabnext<CR>')
-- Close currnt buffer not clossing windows
map('n', '<leader>q', ':bp<Space><bar><Space>sp<Space><bar><Space>bn<Space><bar>bd<CR>')
-- Exit inset mode
map('i', 'kk', '<Esc>')
