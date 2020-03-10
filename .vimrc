" Basic Settings
set nocompatible              " be improved, required filetype off                  " required
set clipboard=unnamed         " configure terminal vim to use mac clipboard
let mapleader="\<space>"      " remap leader to <space> bar
set backspace=2               " make backspace work like most other apps
set laststatus=2              " always display the status line
set showcmd                   " Show us the command we're typing
set hlsearch                  " highlight search items

if has("gui_running")
  set macligatures
  set guifont=Fira\ Code:h20
  set guioptions=
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

" redefine the normal window spliting directions
set splitbelow
set splitright

" Make buffer switching easier
nnoremap <leader><Right> :bnext<CR>
nnoremap <leader><Left> :bprev<CR>

" Enable mouse in Iterm
set mouse=a
set ttymouse=xterm2

" Ruby autocomplete
autocmd FileType ruby,eruby,haml,slim let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby,eruby,haml,slim let g:rubycomplete_classes_in_global = 1
autocmd FileType ruby,eruby,haml,slim let g:rubycomplete_rails = 1

" JS setings
let g:javascript_plugin_flow = 1

call plug#begin('~/.vim/plugged')

Plug 'dense-analysis/ale'               " ALE linter / fixer
Plug 'maximbaz/lightline-ale'           " integrate ale with lightline
Plug 'moll/vim-bbye'                    " bbye
Plug 'ntpeters/vim-better-whitespace'   " better-whitespace
Plug 'hail2u/vim-css3-syntax'           " css3 syntax
Plug 'jeetsukumaran/vim-buffergator'    " buffergator
Plug 'raimondi/delimitmate'             " delimitmate (automatic bracket closing)
Plug 'ekalinin/Dockerfile.vim'          " highlighting for dockerfiles
Plug 'tpope/vim-dispatch'               " async shell commands
Plug 'mattn/emmet-vim'                  " emmet
Plug 'tpope/vim-fireplace'              " clojure stuff
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'                 " fzf
Plug 'fatih/vim-go'                     " vim-go
Plug 'tpope/vim-endwise'                " endwise
Plug 'tpope/vim-fugitive'               " fugitive
Plug 'airblade/vim-gitgutter'           " gitgutter
Plug 'yggdroot/indentline'              " indentline
Plug 'pangloss/vim-javascript'          " javascript
Plug 'mxw/vim-jsx'                      " jsx
Plug 'itchyny/lightline.vim'            " lightline
Plug 'terryma/vim-multiple-cursors'     " multiple-cursors
" Plug 'neomake/neomake'                  " neomake
Plug 'scrooloose/nerdtree'              " nerdtree
Plug 'Xuyuanp/nerdtree-git-plugin'      " nerdtree-git-plugin
Plug 'scrooloose/nerdcommenter'         " nerdcommenter
Plug 'tpope/vim-rails'                  " rails
Plug 'tpope/vim-repeat'                 " vim repeat
Plug 'vim-ruby/vim-ruby'                " ruby
Plug 'tpope/vim-salve'                  " clojure and leiningen stuff
Plug 'tpope/vim-sensible'               " sensible vim defaults
Plug 'ervandew/supertab'                " supertab
Plug 'slim-template/vim-slim'           " slim template highlighting
Plug 'tpope/vim-surround'               " surround
Plug 'cespare/vim-toml'                 " toml
Plug 'leafgarland/typescript-vim'
Plug 'ianks/vim-tsx'

" Themes
Plug 'nightsense/office'                " Office theme
Plug 'felipesousa/rupza'                " Rupza theme
Plug 'chriskempson/vim-tomorrow-theme'  " Tomorrow themes
Plug 'altercation/vim-colors-solarized' " colors-solarized theme
Plug 'nightsense/vimspectr'             " Theme with many hues
Plug 'junegunn/seoul256.vim'            " seoul theme
Plug 'wadackel/vim-dogrun'
" Plug 'chriskempson/base16-vim'          " Base16 themes
" Plug 'nightsense/carbonized'            " carbonized theme
" Plug 'nightsense/vim-crunchbang'        " crunchbang theme

" Tmux
Plug 'sjl/vitality.vim'                 " vitality, make vim and tmux play nice together
Plug 'tmux-plugins/vim-tmux'            " vim tmux
Plug 'benmills/vimux'                   " vimux, send commands to tmux pane

" Plug 'mileszs/ack.vim'                  " Ack
" Plug 'ctrlpvim/ctrlp.vim'               " ctrlp
" Plug 'gregsexton/matchtag'              " matchtag, for html tag
" Plug 'flazz/vim-colorschemes'           " colorschemes
" Plug 'vim-scripts/CSApprox'             " make gui colorshemes work in terminal
" Plug 'mustache/vim-mustache-handlebars' " hbs
" Plug 'joshdick/onedark.vim'             " onedark
" Plug 'godlygeek/tabular'                " tabular
" Plug 'tpope/vim-unimpaired'             " unimpaired
" Plug 'sjl/gundo.vim'                    " gundo

call plug#end()

" bbye config
nnoremap <Leader>q :Bdelete<CR>

" ALE config
let g:ale_linters = {
      \   'javascript': ['eslint'],
      \   'ruby': ['rubocop'],
      \   'typescript': ['tslint'],
      \}
let g:ale_linters_explicit = 1 " Only run linters named in ale_linters settings.
let g:ale_sign_column_always = 1


" neomake config
" call neomake#configure#automake('nrwi', 500)
" let g:neomake_ruby_enabled_makers = ["rubocop"]
" let g:neomake_haml_enabled_makers = ["hamllint"]
" let g:neomake_scss_enabled_makers = ["scsslint"]
" let g:neomake_yaml_enabled_makers = ["yamllint"]
" let g:neomake_css_enabled_makers = ["css-lint"]
" let g:neomake_javascript_enabled_makers = ["eslint"]

" let g:neomake_serialize = 1
" let g:neomake_open_list = 0
" let g:neomake_list_height = 4
" let g:neomake_serialize_abort_on_error = 1

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

" fzf Config
" This is the default extra key bindings
"take over ctrlp
nnoremap <C-p> :Files<Cr>

let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }

" Default fzf layout
" - down / up / left / right
let g:fzf_layout = { 'down': '~40%' }

" Customize fzf colors to match your color scheme
let g:fzf_colors =
      \ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Conditional'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

" Enable per-command history.
" CTRL-N and CTRL-P will be automatically bound to next-history and
" previous-history instead of down and up. If you don't like the change,
" explicitly bind the keys to down and up in your $FZF_DEFAULT_OPTS.
let g:fzf_history_dir = '~/.local/share/fzf-history'

" Similarly, we can apply it to fzf#vim#grep. To use ripgrep instead of ag:
command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always --smart-case '.shellescape(<q-args>), 1,
  \   fzf#vim#with_preview(), <bang>0)

" bind K to grep word under cursor
nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>

" Change leader key for emmet
let g:user_emmet_leader_key='<C-e>'

" Indent guide configuration
let g:indentLine_char = '|'

" multicursor config
let g:multi_cursor_next_key='<C-N>'
let g:multi_cursor_prev_key='<C-P>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'

" Lightline Config
let g:lightline = {
    \ 'colorscheme': 'seoul256',
    \ 'active': {
    \   'left': [ [ 'mode', 'paste' ],
    \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ],
    \   'right': [ [ 'lineinfo', 'linter_checking', 'linter_errors', 'linter_warnings', 'linter_infos', 'linter_ok' ],
    \              [ 'percent' ],
    \              [ 'filetype' ] ]
    \ },
    \ 'component_function': {
    \   'gitbranch': 'fugitive#head'
    \ },
  \ }
let g:lightline.component_expand = {
      \  'linter_checking': 'lightline#ale#checking',
      \  'linter_infos': 'lightline#ale#infos',
      \  'linter_warnings': 'lightline#ale#warnings',
      \  'linter_errors': 'lightline#ale#errors',
      \  'linter_ok': 'lightline#ale#ok',
      \ }

" Syntax Settings
syntax enable
if !has('gui_running')
  set t_Co=256
endif

" For when slim highlighting doesn't work
autocmd BufNewFile,BufRead *.slim set ft=slim

" visual selection fix in tmux
if $TERM ==# 'screen-256color'
  set t_ut=
  set term=screen-256color
endif

function! SetSolarizedLight()
  set background=light
  if !has('gui_running')
    let g:solarized_termcolors = 16 " only needed when using iTerm2's solarized theme
  endif
  colorscheme solarized
endfunction

function! SetSolarizedDark()
  set background=dark
  if !has('gui_running')
    let g:solarized_termcolors = 16 " only needed when using iTerm2's solarized theme
  endif
  colorscheme solarized
endfunction

function! SetTomorrowNight()
  set background=light
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

function! SetSeoul256()
  "   Range:   233 (darkest) ~ 239 (lightest)
  "   Default: 237
  let g:seoul256_background = 234
  colorscheme seoul256
endfunction

function! SetSeoul256Light()
  "   Range:   252 (darkest) ~ 256 (lightest)
  "   Default: 253
  let g:seoul256_background = 252
  colorscheme seoul256-light
endfunction

function! SetVimspectr()
  if strftime("%H") < 7 || strftime("%H") >= 19
    " let themes = [
      " \ 'vimspectr30-dark',
      " \ 'vimspectr60-dark',
      " \ 'vimspectr210-dark',
      " \ 'vimspectr300-dark',
      " \ 'vimspectrgrey-dark'
      " \ ]
    let themes = ['vimspectr60-dark']
  else
    " let themes = [
      " \ 'vimspectr30-light',
      " \ 'vimspectr60-light',
      " \ 'vimspectr210-light',
      " \ 'vimspectr300-light',
      " \ 'vimspectrgrey-light'
      " \ ]
    let themes = ['vimspectr60-light']
  endif
  exe 'colorscheme '.themes[localtime() % len(themes)]
endfunction

" call SetSolarizedLight()
" call SetTomorrowNight()
call SetSeoul256()
" colorscheme base16-bespin

" colorscheme dogrun

filetype plugin indent on    " required
" Autocomplete
set omnifunc=syntaxcomplete#Complete

" remap control p plugin key
" map <leader>p :CtrlPBuffer<CR>

"" The Silver Searcher
" if executable('ag')
  " Use ag over grep
  " set grepprg=ag\ --nogroup\ --nocolor
  " let g:ackprg = 'ag --vimgrep'

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  " let g:ctrlp_user_command = 'ag %s -l --hidden --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  " let g:ctrlp_use_caching = 0
" endif
" let g:ackhighlight = 1
" let g:ack_autofold_results = 1
" let g:ackpreview = 0

" cnoreabbrev Ack Ack!
" nnoremap <Leader>a :Ack!<Space>"

" Ignore some folders and files for CtrlP indexing
" let g:ctrlp_custom_ignore = {
  " \ 'dir':  '\.git\|\.yardoc\|log\|tmp|node_modules',
  " \ 'file': '\.so$\|\.dat$|\.DS_Store$'
  " \ }


