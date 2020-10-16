if v:progname == 'vi'
  set noloadplugins
endif

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

if has('nvim') || has('termguicolors')
  set termguicolors
endif

" change cursor in insert mode
" insert mode - line
let &t_SI .= "\<Esc>[5 q"
"replace mode - underline
let &t_SR .= "\<Esc>[4 q"
"common - block
let &t_EI .= "\<Esc>[3 q"

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
set splitright
set splitbelow

" Always undo
set undodir=~/.vimdid
set undofile

" Make buffer switching easier
nnoremap <leader><Right> :bnext<CR>
nnoremap <leader><Left> :bprev<CR>

" Enable mouse
set mouse=a

" Ruby autocomplete
autocmd FileType ruby,eruby,haml,slim let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby,eruby,haml,slim let g:rubycomplete_classes_in_global = 1
autocmd FileType ruby,eruby,haml,slim let g:rubycomplete_rails = 1

" JS setings
let g:javascript_plugin_flow = 1

" Enable spell checking, s for spell check
map <leader>s :setlocal spell! spelllang=en_us<CR>

" search and replace shortcut
nnoremap <leader>f :%s//gI<Left><Left><Left>

" ALE config
" this is required before the plugin is loaded by plug
let g:ale_linters = {
      \   'javascript': ['eslint'],
      \   'ruby': ['rubocop'],
      \   'typescript': ['tslint'],
      \}
let g:ale_linters_explicit = 1 " Only run linters named in ale_linters settings.
let g:ale_sign_column_always = 1
let g:ale_disable_lsp = 1

call plug#begin('~/.config/nvim/plugged')

" Make things nice plugings
Plug 'ntpeters/vim-better-whitespace'   " better-whitespace
Plug 'jeetsukumaran/vim-buffergator'    " buffergator
Plug 'raimondi/delimitmate'             " delimitmate (automatic bracket closing)
Plug 'ekalinin/Dockerfile.vim'          " highlighting for dockerfiles
Plug 'tpope/vim-dispatch'               " async shell commands
Plug 'yggdroot/indentline'              " indentline
Plug 'terryma/vim-multiple-cursors'     " multiple-cursors
Plug 'scrooloose/nerdcommenter'         " nerdcommenter
Plug 'tpope/vim-repeat'                 " vim repeat
Plug 'tpope/vim-sensible'               " sensible vim defaults
Plug 'tpope/vim-surround'               " surround
Plug 'machakann/vim-highlightedyank'
" Plug 'vim-scripts/CSApprox'             " make gui colorshemes work in terminal

" git stuff
Plug 'tpope/vim-fugitive'               " fugitive
" Plug 'airblade/vim-gitgutter'           " gitgutter
" Plug 'Xuyuanp/nerdtree-git-plugin'      " nerdtree-git-plugin

" IDE features
Plug 'dense-analysis/ale'               " ALE linter / fixer
Plug 'maximbaz/lightline-ale'           " integrate ale with lightline
Plug 'itchyny/lightline.vim'            " lightline
Plug 'scrooloose/nerdtree'              " nerdtree
" Plug 'ervandew/supertab'                " supertab
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Filetype handling
Plug 'cespare/vim-toml'                 " toml

" HTML and CSS plugins
Plug 'mattn/emmet-vim'                  " emmet
Plug 'hail2u/vim-css3-syntax'           " css3 syntax
Plug 'alvan/vim-closetag'               " close html tags

" JS and TS plugins
Plug 'pangloss/vim-javascript'          " javascript
Plug 'maxmellon/vim-jsx-pretty'         " jsx
Plug 'leafgarland/typescript-vim'
" Plug 'ianks/vim-tsx'

" ### Go Lang plugins
" Plug 'govim/govim'                     " vim-go --- not currently supported
" in neovim
" Plug 'fatih/vim-go'
" Plug 'warbear0129/vim-qtpl'

" Ruby and Rails plugins
Plug 'tpope/vim-rails'                  " rails
Plug 'vim-ruby/vim-ruby'                " ruby
Plug 'tpope/vim-endwise'                " endwise
Plug 'slim-template/vim-slim'           " slim template highlighting

" Rust plugins
Plug 'rust-lang/rust.vim'

" Themes
Plug 'chriskempson/vim-tomorrow-theme'  " Tomorrow themes
Plug 'altercation/vim-colors-solarized' " colors-solarized theme
Plug 'junegunn/seoul256.vim'            " seoul theme
Plug 'lifepillar/vim-solarized8'
Plug 'wadackel/vim-dogrun'
" Plug 'chriskempson/base16-vim'          " Base16 themes
Plug 'nightsense/vim-crunchbang'          " crunchbang theme
Plug 'lucasprag/simpleblack'              " https://github.com/lucasprag/simpleblack
Plug 'semibran/vim-colors-synthetic'      " https://github.com/semibran/vim-colors-synthetic
Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' } " https://github.com/challenger-deep-theme/vim
Plug 'rafalbromirski/vim-aurora'          " https://github.com/rafalbromirski/vim-aurora
Plug 'nanotech/jellybeans.vim'            " https://github.com/nanotech/jellybeans.vim
Plug 'joshdick/onedark.vim'               " onedark

" Tmux
" Plug 'sjl/vitality.vim'                 " vitality, make vim and tmux play nice together
" Plug 'tmux-plugins/vim-tmux'            " vim tmux
" Plug 'benmills/vimux'                   " vimux, send commands to tmux pane

" Plug 'ctrlpvim/ctrlp.vim'               " ctrlp
" Plug 'gregsexton/matchtag'              " matchtag, for html tag
" Plug 'flazz/vim-colorschemes'           " colorschemes
" Plug 'tpope/vim-unimpaired'             " unimpaired
" Plug 'sjl/gundo.vim'                    " gundo

call plug#end()

" COC config
" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

" Remap <C-f> and <C-b> for scroll float windows/popups.
nnoremap <expr><C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
nnoremap <expr><C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
inoremap <expr><C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<Right>"
inoremap <expr><C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<Left>"

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" language sever config
" Required for operations modifying multiple buffers like rename.
" set hidden

" let g:LanguageClient_serverCommands = {
    " \ 'rust': ['~/.cargo/bin/rustup', 'run', 'stable', 'rls'],
    " \ }
"    \ 'javascript': ['/usr/local/bin/javascript-typescript-stdio'],
"    \ 'javascript.jsx': ['tcp://127.0.0.1:2089'],
"    \ 'ruby': ['~/.rbenv/shims/solargraph', 'stdio'],
"

" Go lang settings
" let g:go_code_completion_enabled = 1
" let g:go_fmt_autosave = 1
" let g:go_fmt_fail_silently = 1
function DetectGoHtmlTmpl()
    if expand('%:e') == "gohtml"
        set filetype=html
    endif
endfunction

augroup filetypedetect
    au! BufRead,BufNewFile * call DetectGoHtmlTmpl()
augroup END

" nnoremap <F5> :call LanguageClient_contextMenu()<CR>
" Or map each action separately
" nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
" nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
" nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>

" bbye config
nnoremap <Leader>q :Bdelete<CR>

" closetag config
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.qtpl'
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx'
let g:closetag_filetypes = 'html,xhtml,phtml,qtpl'
let g:closetag_xhtml_filetypes = 'xhtml,jsx'
let g:closetag_emptyTags_caseSensitive = 0
let g:closetag_regions = {
    \ 'typescript.tsx': 'jsxRegion,tsxRegion',
    \ 'javascript.jsx': 'jsxRegion',
    \ }

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
" command! -bang -nargs=* Rg
"   \ call fzf#vim#grep(
"   \   'rg --column --line-number --no-heading --color=always --smart-case -- '.shellescape(<q-args>), 1,
"   \   fzf#vim#with_preview(), <bang>0)

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
    \ 'colorscheme': 'challenger_deep',
    \ 'active': {
    \   'left': [ [ 'mode', 'paste' ],
    \             [ 'readonly', 'filename', 'modified' ] ],
    \   'right': [ [ 'percent' ],
    \              [ 'lineinfo'],
    \              ['linter_checking', 'linter_errors', 'linter_warnings', 'linter_infos', 'linter_ok' ] ]
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

" For when slim highlighting doesn't work
autocmd BufNewFile,BufRead *.slim set ft=slim

function! SetSeoul256()
  "   Range:   233 (darkest) ~ 239 (lightest)
  "   Default: 237
  let g:seoul256_background = 233
  colorscheme seoul256
endfunction

function! SetSeoul256Light()
  "   Range:   252 (darkest) ~ 256 (lightest)
  "   Default: 253
  let g:seoul256_background = 252
  colorscheme seoul256-light
endfunction

function! SetColors()
  colorscheme challenger_deep
endfunction

" call SetSeoul256()
" call SetSolarizedDark()
call SetColors()


" must be after colorscheme setting
" set cursorline
" set cursorcolumn

filetype plugin indent on    " required
" Autocomplete
set omnifunc=syntaxcomplete#Complete

