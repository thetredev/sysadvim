local keymap = vim.keymap

local opts_remap = {
  remap = true,
  silent = true,
}

local opts_noremap = {
  noremap = true,
  silent = true,
}

-- Window navigation
keymap.set('n', '<A-Up>', '<C-w>k', opts_remap)
keymap.set('n', '<A-Down>', '<C-w>j', opts_remap)
keymap.set('n', '<A-Left>', '<C-w>h', opts_remap)
keymap.set('n', '<A-Right>', '<C-w>l', opts_remap)
keymap.set('n', '<C-Up>', '<C-w>w', opts_remap)
keymap.set('n', '<C-Left>', ':bprev<Return>', opts_noremap)
keymap.set('n', '<C-Right>', ':bnext<Return>', opts_noremap)

-- Terminal: full height, please
local toggle_terminal = function()
  Snacks.terminal(nil, {
    cwd = vim.loop.cwd(),
    win = {
      relative = 'editor',
      height = 0,
    },
  })
end

keymap.set('n', '<C-_>', toggle_terminal, opts_noremap)
keymap.set('t', '<C-_>', toggle_terminal, opts_noremap)
keymap.set('t', '<C-d>', toggle_terminal, opts_noremap)
keymap.set('t', '<C-D>', 'exit 0<Return>', opts_noremap)

-- Select all
keymap.set('n', '<C-a>', 'gg<S-v>G')

-- File exporer
keymap.set('n', '<C-e>', ':NvimTreeToggle .<Return>', opts_remap)

-- Files
keymap.set('n', '<C-s>', ':w<Return>', opts_noremap)
keymap.set('i', '<C-s>', '<Esc>:w<Return>', opts_noremap)
keymap.set('n', '<C-d>', ':bw<Esc>', opts_noremap)
keymap.set('n', '<C-q>', ':qa!<Return>', opts_noremap)

-- Code
keymap.set('i', '<C-Left>', '<Esc>bi', opts_noremap)
keymap.set('i', '<C-Right>', '<Esc>ei', opts_noremap)
keymap.set('n', '<C-R>', '<Leader>cr', opts_remap)
keymap.set('n', '<C-r>', ':redo<Return>', opts_remap)

-- Compiler
vim.keymap.set('n', 'bb', '<Leader>ftdevbox run build<Return>', opts_remap)
vim.keymap.set('n', 'RR', '<Leader>ftdevbox run release<Return>', opts_remap)
vim.keymap.set('n', 'rr', '<Leader>ftdevbox run . ', opts_remap)

-- Lua
vim.keymap.set('n', '<Leader>l', function()
  local win = vim.api.nvim_get_current_win()
  local buffer_lines = vim.api.nvim_buf_get_lines(0, 1, 3, false)
  local tree_view = require 'nvim-tree.view'
  if next(buffer_lines) ~= nil and tree_view.get_winnr() ~= win then
    vim.cmd 'source'
  end
end, opts_noremap)

-- Tabs
keymap.set('n', 'te', ':tabedit')
keymap.set('n', '<tab>', ':tabnext<Return>', opts_noremap)
keymap.set('n', '<s-tab>', ':tabprev<Return>', opts_noremap)
keymap.set('n', 'tw', ':tabclose<Return>', opts_noremap)

-- Git
keymap.set('n', 'gb', function()
  Snacks.gitbrowse()
end, opts_noremap)

-- Diagnostics
keymap.set('n', '<C-j>', function()
  vim.diagnostic.goto_next()
end, opts_noremap)
