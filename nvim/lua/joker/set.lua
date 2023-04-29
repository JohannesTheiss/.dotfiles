-- use OS clipboard (Linux)
vim.opt.clipboard = "unnamedplus"

-- n-v-c-sm:block =>
--     Normal / Visual / Command-line (Normal append) 
--     -> block cursor
-- i-ci-ve:ver25 => 
--     Insert / Command-line Insert / Visual mode with selection 
--     -> vertical bar 25% of char width
-- r-cr-o:hor20 =>
--     Replace / Command-line Replace / Operator-pending
--     -> horizontal bar 20% of char height
vim.opt.guicursor = "n-v-c-sm:block,i-ci-ve:ver25,r-cr-o:hor20"

vim.opt.nu = true
vim.opt.relativenumber = true

-- vim.opt.showmatch = false
-- vim.opt.hlsearch = false
-- vim.opt.hidden = true
-- vim.opt.errorbells = false

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.ignorecase = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

-- Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable delays and poor user experience.
vim.opt.updatetime = 50

-- vim.opt.colorcolumn = "80"

-- vim.o.smartcase=true
-- vim.o.showmode=false
--

-- Nice menu when typing :find *.py
vim.opt.wildmenu = true
vim.opt.wildmode = { "longest" , "list" , "full" }

-- Ignore files
vim.opt.wildignore = {
    ".pyc,_build/",
    "/coverage/",
    "/node_modules/",
    "/android/",
    "/ios/",
    "/.git/**"
}

-- May set this to 2. 
-- If you want more space for displaying messages.
vim.opt.cmdheight = 1

-- Enable mouse scrolling (with tmux)
vim.opt.mouse = "a"

vim.opt.encoding = "UTF-8"

-- Enable filetype plugin (required for 'preservim/nerdcommenter')
vim.cmd('filetype plugin on')

