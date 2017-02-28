" Basic Settings
set nocompatible              " be iMproved, required
filetype off                  " required
set clipboard^=unnamed        " configure terminal vim to use mac clipboard
let mapleader="\<space>"      " remap leader to <space> bar
"set backspace=2              " make backspace work like most other apps
set laststatus=2              " always display the status line
set showcmd                   " Show us the command we're typing
set hlsearch                  " highlight search items
set guifont=Ubuntu\ Mono:h18

" automatically rebalance windows on vim resize
autocmd VimResized * :wincmd =

" zoom a vim pane, <C-w>= to re-balance
nnoremap <leader>- :wincmd _<cr>:wincmd \|<cr>
nnoremap <leader>= :wincmd =<cr>

" Blunt hammer to ignore things from searches
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.yardoc/*,*.exe,*.so,*.dat

set relativenumber
" set nice line breaks
set breakindent
set showbreak=\ \ \~~
" Disable line wrapping
" set nowrap

" hitting ESC is hard
inoremap jk <Esc>

" Remap ctrl + s to :w + enter
noremap <c-s> :w<CR>
inoremap <c-s> <Esc>:w<CR>

" remap stupid command misspellings
nmap :Q :q
nmap :W :w

" Better Screen Splitting
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" redefine the normal window spliting directions
set splitbelow
set splitright

" Enable mouse in Iterm
set mouse=a
set ttymouse=xterm2

" Arrow keys are bad
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
" bind K to grep word under cursor
nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>

" Change cursor shape in insert mode
if exists($TMUX)
  let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
  let &t_SR = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=2\x7\<Esc>\\"
  let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  let &t_SR = "\<Esc>]50;CursorShape=2\x7"
  let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'mileszs/ack.vim'                  " Ack
" Plugin 'vim-airline/vim-airline-themes'   " airline-themes
Plugin 'moll/vim-bbye'                    " bbye
Plugin 'ntpeters/vim-better-whitespace'   " better-whitespace
Plugin 'jeetsukumaran/vim-buffergator'    " buffergator
" Plugin 'ap/vim-buftabline'                " buftabline
Plugin 'ctrlpvim/ctrlp.vim'               " ctrlp
" Plugin 'flazz/vim-colorschemes'           " colorschemes
Plugin 'kchmck/vim-coffee-script'         " coffee-script
Plugin 'altercation/vim-colors-solarized' " colors-solarized
Plugin 'raimondi/delimitmate'             " delimitmate
Plugin 'mattn/emmet-vim'                  " emmet
Plugin 'tpope/vim-endwise'                " endwise
" Plugin 'dkprice/vim-easygrep'             " easygrep
Plugin 'tpope/vim-fugitive'               " fugitive
Plugin 'airblade/vim-gitgutter'           " gitgutter
Plugin 'yggdroot/indentline'              " indentline
Plugin 'pangloss/vim-javascript'          " javascript
Plugin 'mxw/vim-jsx'                      " jsx
Plugin 'itchyny/lightline.vim'            " lightline
Plugin 'gregsexton/matchtag'              " matchtag, for html tag
Plugin 'terryma/vim-multiple-cursors'     " multiple-cursors
Plugin 'neomake/neomake'
Plugin 'scrooloose/nerdtree'              " nerdtree
Plugin 'scrooloose/nerdcommenter'         " nerdcommenter
Plugin 'tmux-plugins/vim-tmux'            " vim tmux
Plugin 'tpope/vim-rails'                  " rails
Plugin 'tpope/vim-repeat'                 " vim repeat
Plugin 'vim-ruby/vim-ruby'                " ruby
Plugin 'ervandew/supertab'                " supertab
Plugin 'tpope/vim-surround'               " surround
" Plugin 'scrooloose/syntastic'             " syntastic
Plugin 'sjl/vitality.vim'                 " vitality, make vim and tmux play nice together


" Plugin 'bling/vim-airline'                " airline
" Plugin 'wikitopian/hardmode'              " hardmode
" Plugin 'wincent/command-t'                " command t
" Plugin 'Xuyuanp/nerdtree-git-plugin'      " nerdtree-git-plugin
" Plugin 'joshdick/onedark.vim'             " onedark
" Plugin 'rking/ag.vim'                     " ag
" Plugin 'vim-scripts/vim-auto-save'        " auto-save
" Plugin 'thoughtbot/vim-rspec'             " rspec
" Plugin 'godlygeek/tabular'                " tabular
" Plugin 'tpope/vim-unimpaired'             " unimpaired
" Plugin 'sjl/gundo.vim'                    " gundo
" Plugin 'valloric/youcompleteme'
" Plugin 'nathanaelkane/vim-indent-guides'
" Plugin 'bendavis78/vim-polymer'

" All of your Plugins must be added before the following line
call vundle#end()            " required

" Lightline Config
if !has('gui_running')
  set t_Co=256
endif
let g:lightline = {
      \ 'colorscheme': 'solarized',
      \ }

" Make buffer switching easier
nnoremap <Right> :bnext<CR>
nnoremap <Left> :bprev<CR>


" Airline Config
" let g:airline#extensions#tabline#enabled = 1
" let g:airline_theme='solarized'
" unicode symbols
" let g:airline_left_sep = ''
" let g:airline_left_sep = ''
" let g:airline_right_sep = ''
" let g:airline_right_sep = ''

" let g:airline_left_sep = ''
" let g:airline_left_alt_sep = ''
" let g:airline_right_sep = ''
" let g:airline_right_alt_sep = ''
" let g:airline#extensions#tabline#enabled = 1
" let g:airline#extensions#tabline#tab_nr_type = 1
" let g:airline#extensions#tabline#buffer_idx_mode = 1
" let g:airline#extensions#tabline#buffer_nr_show = 1
" let g:airline#extensions#tabline#fnamecollapse = 1
" let g:airline#extensions#tabline#buffer_min_count = 2

" bbye config
nnoremap <Leader>q :Bdelete<CR>

" neomake config
autocmd! BufEnter,BufWritePost * Neomake
let g:neomake_ruby_enabled_makers = ["rubocop"]
let g:neomake_haml_enabled_makers = ["hamllint"]
let g:neomake_scss_enabled_makers = ["scss-lint"]
let g:neomake_yaml_enabled_makers = ["yamllint"]
let g:neomake_css_enabled_makers = ["css-lint"]
let g:neomake_javascript_enabled_makers = ["eslint"]

let g:neomake_serialize = 1
let g:neomake_open_list = 1
let g:neomake_serialize_abort_on_error = 1

" Syntastic config
" nmap eh :SyntasticReset<CR>
" nmap ec :SyntasticCheck<CR>
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*

" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 0
" let g:syntastic_check_on_wq = 0
" let g:syntastic_enable_signs=1
" let g:syntastic_auto_jump=0
" let g:syntastic_check_on_wq=0
" let g:syntastic_ruby_checkers=['rubocop', 'mri']
" let g:syntastic_python_checkers=['pep8', 'pylint', 'python']
" let g:syntastic_html_checkers=['']
" let g:syntastic_scss_checkers = ['scss_lint']
" let syntastic_mode_map = { 'passive_filetypes': ['html', 'erb'] }

" Tabular
" nmap <Leader>a= :Tabularize /=<CR>
" vmap <Leader>a= :Tabularize /=<CR>
" nmap <Leader>a: :Tabularize /:\zs<CR>
" vmap <Leader>a: :Tabularize /:\zs<CR>

" indentation config
" fix indentation for whole file with ,fef
nnoremap <leader>fef :normal! gg=G``<CR>
set tabstop=4 softtabstop=0 expandtab shiftwidth=2 smarttab

" Config NERDTree
map <C-a> :NERDTreeToggle<CR>
let NERDTreeIgnore=['.DS_Store']
let NERDTreeShowBookmarks=0         "show bookmarks on startup
let NERDTreeHighlightCursorline=1   "Highlight the selected entry in the tree
let NERDTreeShowLineNumbers=0
let NERDTreeMinimalUI=1
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif " auto kill nerdtree if it is the only buffer

" Config NERDCommenter
let NERDSpaceDelims=1               " space around delimiters
let NERDRemoveExtraSpaces=1"

" remap control p plugin key
" map <C-f> :CtrlP<CR>
map <leader>p :CtrlPBuffer<CR>

"" The Silver Searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor
  let g:ackprg = 'ag --vimgrep'

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --hidden --nocolor -g ""'

  " " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

" Ignore some folders and files for CtrlP indexing
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git\|\.yardoc\|log\|tmp|node_modules',
  \ 'file': '\.so$\|\.dat$|\.DS_Store$'
  \ }

" Change leader key for emmet
let g:user_emmet_leader_key='<C-e>'

" Indent guide configuration
" let g:indent_guides_start_level=2
" let g:indent_guides_auto_colors=0
" autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=#ffff87   ctermbg=3
" autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=#ffd7ff   ctermbg=4
let g:indentLine_char = '|'

" multicursor config
let g:multi_cursor_next_key='<C-N>'
let g:multi_cursor_prev_key='<C-P>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'

" Syntax Settings
syntax on
set background=light
colorscheme solarized

filetype plugin indent on    " required

