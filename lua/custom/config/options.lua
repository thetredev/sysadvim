-- [[ General settings]]
-- Line numbers
vim.opt.number = true
-- vim.opt.relativenumber = true
-- Mouse support
vim.opt.mouse = 'a'

-- Kickstart recommends to disable this so we do as well
vim.opt.showmode = false

-- Allow clipboard sharing between vim buffers and the global system clipboard
vim.schedule(function()
  vim.opt.clipboard = 'unnamedplus'
end)

-- Enable break indent
vim.opt.breakindent = true

-- Save undo history
vim.opt.undofile = true

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Keep signcolumn on by default
vim.opt.signcolumn = 'yes'

-- Decrease update time
vim.opt.updatetime = 250

-- Decrease mapped sequence wait time
vim.opt.timeoutlen = 300

-- Configure how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Disable display of whitespace characters as glyphs
vim.opt.list = false
-- vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- Preview substitutions live, as you type!
vim.opt.inccommand = 'split'

-- Show which line your cursor is on
vim.opt.cursorline = true

-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 10

vim.scriptencoding = 'utf-8'
vim.opt.encoding = 'utf-8'

vim.opt.swapfile = false
vim.opt.number = true

--vim.opt.title = true
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.hlsearch = true
vim.opt.backup = false
vim.opt.showcmd = true
vim.opt.cmdheight = 0
vim.opt.laststatus = 0
vim.opt.conceallevel = 0
--vim.opt.inccommand = "split"
--vim.opt.ignorecase = true
vim.opt.smarttab = true
vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.breakindent = true
vim.opt.wrap = false
--vim.opt.backspace = { "start", "eol", "indent" }
vim.opt.path:append { '**' }
--vim.opt.wildignore:append({ "*/node_modules/*" })
--vim.opt.splitbelow = true
--vim.opt.splitright = true
--vim.opt.splitkeep = "cursor"
