" Basic Settings
set nocompatible              " be improved, required filetype off, required
set clipboard=unnamed         " configure terminal vim to use mac clipboard
let mapleader="\<space>"      " remap leader to <space> bar
let maplocalleader="\\"
set backspace=2               " make backspace work like most other apps
set laststatus=2              " always display the status line
set showcmd                   " Show us the command we're typing
set hlsearch                  " highlight search items

set guifont=Source\ Code\ Pro

" automatically rebalance windows on vim resize
autocmd VimResized * :wincmd =

" zoom a vim pane, <C-w>= to re-balance
nnoremap <leader>- :wincmd _<cr>:wincmd \|<cr>
nnoremap <leader>= :wincmd =<cr>

" Blunt hammer to ignore things from searches
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.yardoc/*,*.exe,*.so,*.dat

" set relative line numbering hybrid number mode
set number
" set relativenumber
" Auto-toggle line numbers
" relative line numbers for normal mode
" normal line numbers for insert mode
" augroup numbertoggle
  " autocmd!
  " autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  " autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
" augroup END

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
set signcolumn=number

" set nice line breaks
set breakindent
set showbreak=\ \ \~~

" indentation config
set tabstop=4 softtabstop=0 expandtab shiftwidth=2 smarttab

" Disable line wrapping
" set nowrap

" hitting ESC is hard
inoremap jk <Esc>

" remap stupid command misspellings
nmap :Q :q
nmap :W :w

" redefine the normal window spliting directions
set splitright
set splitbelow

" Always undo
set undodir=~/.vimdid
set undofile

" Enable mouse
set mouse=a

" Enable spell checking, s for spell check
map <leader>s :setlocal spell! spelllang=en_us<CR>

" search and replace shortcut
nnoremap <leader>f :%s//gI<Left><Left><Left>

source ~/.config/nvim/vim_script/plug_config.vim

" Language server configs
luafile ~/.config/nvim/lua/lsp-config.lua
luafile ~/.config/nvim/lua/compe-config.lua

source ~/.config/nvim/vim_script/plugin_config.vim
source ~/.config/nvim/vim_script/go_lang.vim
source ~/.config/nvim/vim_script/nerd_plugins_config.vim
source ~/.config/nvim/vim_script/fzf_config.vim
source ~/.config/nvim/vim_script/syntax.vim

call SetColors()

