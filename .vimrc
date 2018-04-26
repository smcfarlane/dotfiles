" Basic Settings
set nocompatible              " be improved, required filetype off                  " required
set clipboard^=unnamed        " configure terminal vim to use mac clipboard
let mapleader="\<space>"      " remap leader to <space> bar
set backspace=2               " make backspace work like most other apps
set laststatus=2              " always display the status line
set showcmd                   " Show us the command we're typing
set hlsearch                  " highlight search items

if has("gui_running")
  set macligatures
  set guifont=Fira\ Code
else
  set guifont=Fira\ Code
endif

" automatically rebalance windows on vim resize
autocmd VimResized * :wincmd =

" zoom a vim pane, <C-w>= to re-balance
nnoremap <leader>- :wincmd _<cr>:wincmd \|<cr>
nnoremap <leader>= :wincmd =<cr>

" Blunt hammer to ignore things from searches
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.yardoc/*,*.exe,*.so,*.dat

" set relative line numbering hybrid number mode
set number
set relativenumber
" Auto-toggle line numbers
" relative line numbers for normal mode
" normal line numbers for insert mode
augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

" set nice line breaks
set breakindent
set showbreak=\ \ \~~

" indentation config
" fix indentation for whole file with ,fef
nnoremap <leader>fef :normal! gg=G``<CR>
set tabstop=4 softtabstop=0 expandtab shiftwidth=2 smarttab

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

" this is easier but I need to get used to the way normal vim does it
" Better Screen Movement
" nnoremap <C-J> <C-W><C-J>
" nnoremap <C-K> <C-W><C-K>
" nnoremap <C-L> <C-W><C-L>
" nnoremap <C-H> <C-W><C-H>

" redefine the normal window spliting directions
set splitbelow
set splitright

" Enable mouse in Iterm
set mouse=a
set ttymouse=xterm2

" Ruby autocomplete
autocmd FileType ruby,eruby,haml,slim let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby,eruby,haml,slim let g:rubycomplete_classes_in_global = 1
autocmd FileType ruby,eruby,haml,slim let g:rubycomplete_rails = 1

" JS setings
let g:javascript_plugin_flow = 1

" Arrow keys are bad, this gets annoying fast, I'll be better later
" noremap <Up> <NOP>
" noremap <Down> <NOP>
" noremap <Left> <NOP>
" noremap <Right> <NOP>

" Change cursor shape in insert mode
if $TERM ==# 'screen-256color'
  set notermguicolors
  let &t_8f = "\<Esc>[38:2:%lu:%lu:%lum"
  let &t_8b = "\<Esc>[48:2:%lu:%lu:%lum"
  let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
  let &t_SR = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=2\x7\<Esc>\\"
  let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
  set termguicolors
  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  let &t_SR = "\<Esc>]50;CursorShape=2\x7"
  let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'mileszs/ack.vim'                  " Ack
Plugin 'moll/vim-bbye'                    " bbye
Plugin 'ntpeters/vim-better-whitespace'   " better-whitespace
Plugin 'jeetsukumaran/vim-buffergator'    " buffergator
Plugin 'ctrlpvim/ctrlp.vim'               " ctrlp
Plugin 'altercation/vim-colors-solarized' " colors-solarized theme
Plugin 'nightsense/carbonized'            " carbonized theme
Plugin 'nightsense/vimspectr'
Plugin 'raimondi/delimitmate'             " delimitmate
Plugin 'ekalinin/Dockerfile.vim'          " highlighting for dockerfiles
Plugin 'mattn/emmet-vim'                  " emmet
Plugin 'tpope/vim-endwise'                " endwise
" Plugin 'tpope/vim-fugitive'               " fugitive
Plugin 'yggdroot/indentline'              " indentline
Plugin 'pangloss/vim-javascript'          " javascript
Plugin 'mxw/vim-jsx'                      " jsx
Plugin 'itchyny/lightline.vim'            " lightline
" Plugin 'gregsexton/matchtag'              " matchtag, for html tag
Plugin 'terryma/vim-multiple-cursors'     " multiple-cursors
Plugin 'neomake/neomake'                  " neomake
Plugin 'scrooloose/nerdtree'              " nerdtree
Plugin 'scrooloose/nerdcommenter'         " nerdcommenter
Plugin 'tmux-plugins/vim-tmux'            " vim tmux
Plugin 'benmills/vimux'                   " vimux, send commands to tmux pane
Plugin 'tpope/vim-rails'                  " rails
Plugin 'tpope/vim-repeat'                 " vim repeat
Plugin 'vim-ruby/vim-ruby'                " ruby
Plugin 'ervandew/supertab'                " supertab
Plugin 'slim-template/vim-slim.git'       " slim template highlighting
Plugin 'tpope/vim-surround'               " surround
Plugin 'chriskempson/vim-tomorrow-theme'  " Tomorrow themes
" Plugin 'keith/swift.vim'                  " swift
" Plugin 'mitsuse/autocomplete-swift'       " swift auto complete
Plugin 'sjl/vitality.vim'                 " vitality, make vim and tmux play nice together


" Plugin 'posva/vim-vue'                    " vue
" Plugin 'airblade/vim-gitgutter'           " gitgutter
" Plugin 'flazz/vim-colorschemes'           " colorschemes
" Plugin 'chriskempson/base16-vim'          " more colorschemes
" Plugin 'kchmck/vim-coffee-script'         " coffee-script
" Plugin 'vim-scripts/CSApprox'             " make gui colorshemes work in terminal
" Plugin 'editorconfig/editorconfig-vim'    " editorconfig
" Plugin 'fatih/vim-go'                     " vim-go
" Plugin 'thoughtbot/vim-rspec'             " rspec
" Plugin 'leafgarland/typescript-vim'       " typescript
" Plugin 'quramy/tsuquyomi'                 " more typescript
" Plugin 'mustache/vim-mustache-handlebars' " hbs
" Plugin 'ap/vim-buftabline'                " buftabline
" Plugin 'bling/vim-airline'                " airline
" Plugin 'wikitopian/hardmode'              " hardmode
" Plugin 'wincent/command-t'                " command t
" Plugin 'Xuyuanp/nerdtree-git-plugin'      " nerdtree-git-plugin
" Plugin 'joshdick/onedark.vim'             " onedark
" Plugin 'vim-scripts/vim-auto-save'        " auto-save
" Plugin 'godlygeek/tabular'                " tabular
" Plugin 'tpope/vim-unimpaired'             " unimpaired
" Plugin 'sjl/gundo.vim'                    " gundo
" Plugin 'bendavis78/vim-polymer'           " Polymer

" All of your Plugins must be added before the following line
call vundle#end()            " required

" Make buffer switching easier
nnoremap <leader><Right> :bnext<CR>
nnoremap <leader><Left> :bprev<CR>

" bbye config
nnoremap <Leader>q :Bdelete<CR>

" neomake config
" autocmd! BufReadPost,BufWritePost * Neomake
autocmd! BufWritePost * Neomake
let g:neomake_ruby_enabled_makers = ["rubocop"]
" let g:neomake_haml_enabled_makers = ["hamllint"]
" let g:neomake_scss_enabled_makers = ["scsslint"]
let g:neomake_yaml_enabled_makers = ["yamllint"]
" let g:neomake_css_enabled_makers = ["css-lint"]
let g:neomake_javascript_enabled_makers = ["eslint"]

let g:neomake_serialize = 1
let g:neomake_open_list = 0
let g:neomake_list_height = 4
let g:neomake_serialize_abort_on_error = 1

" vimux shortcuts
map <leader>vp :VimuxPromptCommand<CR>
map <leader>vl :VimuxRunLastCommand<CR>
map <Leader>vi :VimuxInspectRunner<CR>
map <Leader>vq :VimuxCloseRunner<CR>
map <Leader>vs :VimuxInterruptRunner<CR>
map <Leader>vc :VimuxClearRunnerHistory<CR>
map <Leader>vz :VimuxZoomRunner<CR>

" Config NERDTree
map <C-a> :NERDTreeToggle<CR>
let NERDTreeIgnore=['.DS_Store', '*.swp', '*.swo']
let NERDTreeShowBookmarks=0         "show bookmarks on startup
let NERDTreeHighlightCursorline=1   "Highlight the selected entry in the tree
let NERDTreeShowLineNumbers=0
let NERDTreeMinimalUI=1
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif " auto kill nerdtree if it is the only buffer

" Config NERDCommenter
let NERDSpaceDelims=1               " space around delimiters
let NERDRemoveExtraSpaces=1

" remap control p plugin key
map <leader>p :CtrlPBuffer<CR>

"" The Silver Searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor
  let g:ackprg = 'ag --vimgrep'

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --hidden --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

cnoreabbrev Ack Ack!
nnoremap <Leader>a :Ack!<Space>

" Ignore some folders and files for CtrlP indexing
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git\|\.yardoc\|log\|tmp|node_modules',
  \ 'file': '\.so$\|\.dat$|\.DS_Store$'
  \ }

" Change leader key for emmet
let g:user_emmet_leader_key='<C-e>'

" Indent guide configuration
let g:indentLine_char = '|'

" multicursor config
let g:multi_cursor_next_key='<C-N>'
let g:multi_cursor_prev_key='<C-P>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'

" editorconfig config
let g:EditorConfig_exclude_patterns = ['fugitive://.*', 'scp://.*']


" Syntax Settings
if !has('gui_running')
  set t_Co=256
endif
" visual selection fix
if $TERM ==# 'screen-256color'
  set t_ut=
endif

syntax enable

function! SetSolarized()
  set background=light
  let g:solarized_termcolors = 16 " only needed when using iTerm2's solarized theme
  let g:solarized_visibility = "high"
  let g:solarized_contrast = "high"
  let g:solarized_termtrans = 1
  let g:solarized_termcolors = 16 " only needed when using iTerm2's solarized theme
  colorscheme solarized
endfunction

function! SetTomorrowNight()
  set background=dark
  colorscheme Tomorrow-Night
endfunction

function! SetTomorrow()
  set background=light
  colorscheme Tomorrow
endfunction

function! SetCarbonize()
  set background=light
  colorscheme carbonized-light
endfunction

function! SetVimspectr()
  if strftime("%H") < 7 || strftime("%H") >= 19
    let themes = [
      \ 'vimspectr0-dark'   , 'vimspectr0-dark'    , 'vimspectr30-dark'  ,
      \ 'vimspectr60-dark'  , 'vimspectr90-dark'   , 'vimspectr120-dark' ,
      \ 'vimspectr150-dark' , 'vimspectr180-dark'  , 'vimspectr210-dark' ,
      \ 'vimspectr240-dark' , 'vimspectr270-dark'  , 'vimspectr300-dark' ,
      \ 'vimspectr330-dark' , 'vimspectrgrey-dark'
      \ ]
  else
    let themes = [
      \ 'vimspectr0-light'  , 'vimspectr0-light'   , 'vimspectr30-light' ,
      \ 'vimspectr60-light' , 'vimspectr90-light'  , 'vimspectr120-light',
      \ 'vimspectr150-light', 'vimspectr180-light' , 'vimspectr210-light',
      \ 'vimspectr240-light', 'vimspectr270-light' , 'vimspectr300-light',
      \ 'vimspectr330-light', 'vimspectrgrey-light'
      \ ]
  endif
  exe 'colorscheme '.themes[localtime() % len(themes)]
endfunction

if has("gui_running")
  " call SetTomorrowNight()
  " call SetSolarized()
  " call SetCarbonize()
  call SetVimspectr()
else
  " call SetTomorrowNight()
  " call SetSolarized()
  " call SetCarbonize()
  call SetVimspectr()
endif

" Lightline Config
" dark theme = jellybeans
" light theme = solarized
let g:lightline = {
    \ 'colorscheme': 'jellybeans',
    \ 'active': {
    \   'left': [ [ 'mode', 'paste' ],
    \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ],
    \   'right': [ [ 'lineinfo' ],
    \              [ 'percent' ],
    \              [ 'filetype' ] ]
    \ },
    \ 'component_function': {
    \   'gitbranch': 'fugitive#head'
    \ },
  \ }

filetype plugin indent on    " required

